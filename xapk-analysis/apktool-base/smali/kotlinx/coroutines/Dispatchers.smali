.class public abstract Lkotlinx/coroutines/Dispatchers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public static final b:Lkotlinx/coroutines/Unconfined;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->m:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sput-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/coroutines/Unconfined;->l:Lkotlinx/coroutines/Unconfined;

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/Unconfined;

    .line 8
    .line 9
    return-void
.end method
