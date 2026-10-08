.class final Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1"
    f = "JavaDataStorage.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lcom/google/firebase/datastorage/JavaDataStorage;

.field public final synthetic p:Landroidx/datastore/preferences/core/Preferences$Key;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->o:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->p:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->q:Ljava/lang/Object;

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
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->p:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->q:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->o:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->o:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/firebase/datastorage/JavaDataStorage;->c:Landroidx/datastore/core/DataStore;

    .line 27
    .line 28
    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->g()Lkotlinx/coroutines/flow/Flow;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput v2, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->n:I

    .line 33
    .line 34
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->o(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->p:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Landroidx/datastore/preferences/core/MutablePreferences;->a:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of v0, p1, [B

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    check-cast p1, [B

    .line 63
    .line 64
    array-length v0, p1

    .line 65
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_3
    if-nez p1, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    return-object p1

    .line 73
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;->q:Ljava/lang/Object;

    .line 74
    .line 75
    return-object p0
.end method
