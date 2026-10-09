.class public final Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic k:Landroidx/room/RoomDatabase;

.field public final synthetic l:Lii;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/room/RoomDatabase;Lii;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->k:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->l:Lii;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;-><init>(Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    iget-object p0, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    check-cast p1, Ljava/util/Set;

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 62
    .line 63
    iput-object p1, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 64
    .line 65
    iput v5, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->n:I

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->k:Landroidx/room/RoomDatabase;

    .line 68
    .line 69
    iget-object p0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->l:Lii;

    .line 70
    .line 71
    invoke-static {p2, v5, p0, v0}, Landroidx/room/util/DBUtil;->c(Landroidx/room/RoomDatabase;ZLii;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-ne p2, v1, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object p0, p1

    .line 79
    :goto_1
    iput-object v3, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 80
    .line 81
    iput v4, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->n:I

    .line 82
    .line 83
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_5

    .line 88
    .line 89
    :goto_2
    return-object v1

    .line 90
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method
