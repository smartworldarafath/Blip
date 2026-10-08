.class final Lnet/blip/android/MainActivityKt$handleInboundShare$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.MainActivityKt"
    f = "MainActivity.kt"
    l = {
        0x16a
    }
    m = "handleInboundShare"
    v = 0x2
.end annotation


# instance fields
.field public m:Landroid/app/Activity;

.field public n:Lnet/blip/libblip/frontend/State;

.field public o:Lkotlin/jvm/functions/Function1;

.field public p:Lnet/blip/libblip/PeerId;

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/ArrayList;

.field public s:Landroidx/navigation/NavController;

.field public synthetic t:Ljava/lang/Object;

.field public u:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iput-object p1, p0, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->t:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->u:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->u:I

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v8, p0

    .line 19
    invoke-static/range {v0 .. v8}, Lnet/blip/android/MainActivityKt;->c(Landroid/app/Activity;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/blip/android/ui/util/SuspendingPermissionState;Landroidx/navigation/NavController;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
