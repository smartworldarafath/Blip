.class final Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.FirebaseNotificationService"
    f = "FirebaseNotificationService.kt"
    l = {
        0xa8,
        0xa9
    }
    m = "handleTransferRevokeInvite"
    v = 0x2
.end annotation


# instance fields
.field public m:Lnet/blip/libblip/Peer;

.field public n:Ljava/lang/String;

.field public o:Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lnet/blip/android/notifications/FirebaseNotificationService;

.field public r:I


# direct methods
.method public constructor <init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->q:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

    .line 9
    .line 10
    sget p1, Lnet/blip/android/notifications/FirebaseNotificationService;->v:I

    .line 11
    .line 12
    iget-object p1, p0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->q:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, v0, p0}, Lnet/blip/android/notifications/FirebaseNotificationService;->f(Lnet/blip/libblip/Peer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
