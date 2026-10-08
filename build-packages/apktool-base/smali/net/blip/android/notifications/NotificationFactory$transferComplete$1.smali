.class final Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.NotificationFactory"
    f = "NotificationFactory.kt"
    l = {
        0x1c6,
        0x1c9,
        0x1e0
    }
    m = "transferComplete"
    v = 0x2
.end annotation


# instance fields
.field public m:Lnet/blip/libblip/Peer;

.field public n:Lnet/blip/libblip/frontend/Transfer;

.field public o:Ljava/util/List;

.field public p:Landroid/net/Uri;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lnet/blip/android/notifications/NotificationFactory;

.field public t:I


# direct methods
.method public constructor <init>(Lnet/blip/android/notifications/NotificationFactory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->s:Lnet/blip/android/notifications/NotificationFactory;

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
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 9
    .line 10
    iget-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->s:Lnet/blip/android/notifications/NotificationFactory;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, p0}, Lnet/blip/android/notifications/NotificationFactory;->e(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
