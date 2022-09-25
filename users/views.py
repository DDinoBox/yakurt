import json, requests, jwt

from django.http     import JsonResponse
from django.views    import View

from yakurt.settings import KAKAO_CLIENT_ID, KAKAO_REDIRECT_URI, SECRET_KEY, ALGORITHM
from users.models    import User
from core.utils      import login_decorator

class KaKaoClient:
    def __init__(self, kakao_client_id):
        self.kakao_auth_api = 'https://kauth.kakao.com/oauth/token'
        self.kakao_user_api = 'https://kapi.kakao.com/v2/user/me'
        self.client_id      = kakao_client_id

    def get_access_token(self, code):
        data = {
            'grant_type' : 'authorization_code',
            'client_id'  : self.client_id,
            'code'       : code
        }
        
        response = requests.post(self.kakao_auth_api, data=data, timeout=5)
        
        if response.status_code == 400:
            raise Exception('AUTH_CODE_INVALID_ERROR' , 400)
        
        return response.json()['access_token']
    
    def get_user_information(self, access_token):
        try:
            response  = requests.get(
                self.kakao_user_api, 
                headers = {'Authorization' : f'Bearer {access_token}'}, 
                timeout = 5
            )
            
            if response.status_code == 401:
                raise Exception('ACCESS_TOKEN_INVALID_ERROR' , 401)
        
            return response.json()
        except:
            raise Exception('ACCESS_TOKEN_INVALID_ERROR' , 401)

class kakaoCallBackView(View):
    def get(self,request):
        try:
            auth_code    = request.GET['code']
            kakao_clinet = KaKaoClient(KAKAO_CLIENT_ID)
            
            access_token     = kakao_clinet.get_access_token(KAKAO_REDIRECT_URI)
            user_information = kakao_clinet.get_user_information(auth_code, access_token)
            
            kakao_id  = user_information['id']
            nick_name = user_information['properties']['nickname']
            email     = user_information['kakao_account']['email']
            
            user, is_created = User.objects.get_or_create(
                    kakao_id = kakao_id,
                    defaults = {
                        'nick_name': nick_name,
                        'email'    : email
                    }
            )
            
            data = {
                'access_token': jwt.encode({'id' : user.id}, SECRET_KEY, ALGORITHM),
                'nick_name'   : nick_name,
                'email'       : email
            }
            
            return JsonResponse({'message' : 'SUCCESS', 'data' : data}, status = 200)
        
        except KeyError:
            return JsonResponse({'message' : 'KEY ERROR'}, status = 400)
        
        except Exception as e:
            return JsonResponse({'message' : e.args[0]} , status = e.args[1])

class UserView(View):
    @login_decorator
    def get(self, request):
        user      = request.user
        
        results = {
            'nick_name'   : user.nick_name,
            'email'       : user.email,
            'address'     : user.address,
            'phone_number': user.phone_number
        }
        
        return JsonResponse({'results':results}, status=200)
    
    @login_decorator
    def patch(self, request):
        user              = request.user
        data              = json.loads(request.body)
        
        user.phone_number = data['phone_number'] if data['phone_number'] else user.phone_number
        user.address      = data['address'] if data['address'] else user.address
        user.save()
        
        return JsonResponse({'message': 'SUCCESS'}, status=200)
