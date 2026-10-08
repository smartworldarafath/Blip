.class public abstract Lnet/blip/android/notifications/FirebaseNotificationTokenManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lnet/blip/libblip/Core;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 2
    .line 3
    new-instance v1, Lnet/blip/android/notifications/FirebaseNotificationTokenManager$observeAuthChanges$$inlined$map$1;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lnet/blip/android/notifications/FirebaseNotificationTokenManager$observeAuthChanges$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, La7;

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v2}, La7;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->k(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lnet/blip/android/notifications/FirebaseNotificationTokenManager$observeAuthChanges$4;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lnet/blip/android/notifications/FirebaseNotificationTokenManager$observeAuthChanges$4;-><init>(Lnet/blip/libblip/Core;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
