.class public final Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic k:Landroidx/room/RoomDatabase;

.field public final synthetic l:Lii;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroidx/room/RoomDatabase;Lii;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->j:Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->k:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->l:Lii;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->k:Landroidx/room/RoomDatabase;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->l:Lii;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/room/RoomDatabase;Lii;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->j:Lkotlinx/coroutines/flow/Flow;

    .line 11
    .line 12
    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method
