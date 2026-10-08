.class public final Lcom/google/firebase/datastorage/JavaDataStorage;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic d:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/ThreadLocal;

.field public final c:Landroidx/datastore/core/DataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference2Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    sput-object v1, Lcom/google/firebase/datastorage/JavaDataStorage;->d:[Lkotlin/reflect/KProperty;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->b:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    new-instance v0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 17
    .line 18
    new-instance v1, Ly9;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p0, v2}, Ly9;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Ly9;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ly9;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v1, p0, v3}, Ly9;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;I)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 34
    .line 35
    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 36
    .line 37
    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    .line 53
    .line 54
    invoke-direct {v4, p2, v0, v1, v3}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;-><init>(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V

    .line 55
    .line 56
    .line 57
    sget-object p2, Lcom/google/firebase/datastorage/JavaDataStorage;->d:[Lkotlin/reflect/KProperty;

    .line 58
    .line 59
    aget-object p2, p2, v2

    .line 60
    .line 61
    invoke-virtual {v4, p1, p2}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroidx/datastore/core/DataStore;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->c:Landroidx/datastore/core/DataStore;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$editSync$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$editSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/datastore/preferences/core/Preferences;

    .line 14
    .line 15
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$getAllSync$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$getAllSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/Map;

    .line 14
    .line 15
    return-object p0
.end method

.method public final c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Long;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/datastore/preferences/core/Preferences;

    .line 17
    .line 18
    return-void
.end method
