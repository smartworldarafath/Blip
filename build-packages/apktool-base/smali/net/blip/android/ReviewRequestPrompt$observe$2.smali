.class final Lnet/blip/android/ReviewRequestPrompt$observe$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lnet/blip/libblip/frontend/State;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ReviewRequestPrompt$observe$2"
    f = "ReviewRequestPrompt.kt"
    l = {
        0x23,
        0x29
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:J

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lnet/blip/android/ReviewRequestPrompt;

.field public final synthetic r:Lkotlinx/coroutines/flow/StateFlow;

.field public final synthetic s:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lnet/blip/android/ReviewRequestPrompt;Lkotlinx/coroutines/flow/StateFlow;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->q:Lnet/blip/android/ReviewRequestPrompt;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->r:Lkotlinx/coroutines/flow/StateFlow;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->s:Landroid/app/Activity;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ReviewRequestPrompt$observe$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ReviewRequestPrompt$observe$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lnet/blip/android/ReviewRequestPrompt$observe$2;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->r:Lkotlinx/coroutines/flow/StateFlow;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->s:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->q:Lnet/blip/android/ReviewRequestPrompt;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lnet/blip/android/ReviewRequestPrompt$observe$2;-><init>(Lnet/blip/android/ReviewRequestPrompt;Lkotlinx/coroutines/flow/StateFlow;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->p:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/blip/libblip/frontend/State;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->o:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v7, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->q:Lnet/blip/android/ReviewRequestPrompt;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    if-eq v2, v5, :cond_1

    .line 19
    .line 20
    if-ne v2, v4, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v6

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    iget-wide v8, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->n:J

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v7, v0}, Lnet/blip/android/ReviewRequestPrompt;->a(Lnet/blip/android/ReviewRequestPrompt;Lnet/blip/libblip/frontend/State;)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    iput-object v3, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->p:Ljava/lang/Object;

    .line 52
    .line 53
    iput-wide v8, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->n:J

    .line 54
    .line 55
    iput v5, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->o:I

    .line 56
    .line 57
    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    iget-object p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->r:Lkotlinx/coroutines/flow/StateFlow;

    .line 65
    .line 66
    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 71
    .line 72
    invoke-static {v7, p1}, Lnet/blip/android/ReviewRequestPrompt;->a(Lnet/blip/android/ReviewRequestPrompt;Lnet/blip/libblip/frontend/State;)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    const-wide/16 v12, 0x0

    .line 84
    .line 85
    cmp-long p1, v10, v12

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    iput-object v3, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->p:Ljava/lang/Object;

    .line 91
    .line 92
    iput-wide v8, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->n:J

    .line 93
    .line 94
    iput v4, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->o:I

    .line 95
    .line 96
    iget-object p1, p0, Lnet/blip/android/ReviewRequestPrompt$observe$2;->s:Landroid/app/Activity;

    .line 97
    .line 98
    invoke-static {v7, p1, p0}, Lnet/blip/android/ReviewRequestPrompt;->b(Lnet/blip/android/ReviewRequestPrompt;Landroid/app/Activity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-ne p0, v1, :cond_6

    .line 103
    .line 104
    :goto_1
    return-object v1

    .line 105
    :cond_6
    :goto_2
    return-object v6
.end method
