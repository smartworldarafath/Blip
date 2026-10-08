.class abstract synthetic Lkotlinx/coroutines/flow/FlowKt__DistinctKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:La7;

.field public static final b:Lz6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, La7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:La7;

    .line 9
    .line 10
    new-instance v0, Lz6;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-direct {v0, v1}, Lz6;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b:Lz6;

    .line 17
    .line 18
    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 7
    .line 8
    iget-object v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->k:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->l:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    if-ne v0, p2, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
