.class final Lnet/blip/android/ReviewRequestPrompt$observe$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ReviewRequestPrompt"
    f = "ReviewRequestPrompt.kt"
    l = {
        0x6e
    }
    m = "observe"
    v = 0x2
.end annotation


# instance fields
.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lnet/blip/android/ReviewRequestPrompt;

.field public o:I


# direct methods
.method public constructor <init>(Lnet/blip/android/ReviewRequestPrompt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->n:Lnet/blip/android/ReviewRequestPrompt;

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
    iput-object p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->o:I

    .line 9
    .line 10
    iget-object p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$1;->n:Lnet/blip/android/ReviewRequestPrompt;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, p0}, Lnet/blip/android/ReviewRequestPrompt;->c(Landroid/app/Activity;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method
