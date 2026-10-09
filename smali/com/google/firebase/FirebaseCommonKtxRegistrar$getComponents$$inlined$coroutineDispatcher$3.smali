.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/components/ComponentFactory;"
    }
.end annotation


# static fields
.field public static final j:Lcom/google/firebase/FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3;->j:Lcom/google/firebase/FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/firebase/components/Qualified;

    .line 2
    .line 3
    const-class v0, Lcom/google/firebase/annotations/concurrent/Blocking;

    .line 4
    .line 5
    const-class v1, Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p0}, Lcom/google/firebase/components/ComponentContainer;->f(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-static {p0}, Lkotlinx/coroutines/ExecutorsKt;->a(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
