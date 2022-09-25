from django.urls import path

from subscriptions.views import ReviewListview, SubscriptionListview, ReviewDetailView, ReviewListDetailView

urlpatterns = [
    path('/<int:subscription_id>/review',ReviewDetailView.as_view()),
    path('',SubscriptionListview.as_view()),
    path('/reviews',ReviewListview.as_view()),
    path('/review/<int:review_id>',ReviewListDetailView.as_view()),
]