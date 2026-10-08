.class final Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1$handle$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.compose.AsyncImagePreviewHandler$Companion$Default$1"
    f = "LocalAsyncImagePreviewHandler.kt"
    l = {
        0x26
    }
    m = "handle"
    v = 0x1
.end annotation


# instance fields
.field public m:Lcoil3/request/ImageRequest;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

.field public p:I


# direct methods
.method public constructor <init>(Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1$handle$1;->o:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

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
    iput-object p1, p0, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1$handle$1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1$handle$1;->p:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1$handle$1;->p:I

    .line 9
    .line 10
    iget-object p1, p0, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1$handle$1;->o:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, p0}, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;->a(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
