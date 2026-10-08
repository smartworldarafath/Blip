.class public abstract Landroidx/compose/ui/text/platform/DispatcherKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    sput-object v0, Landroidx/compose/ui/text/platform/DispatcherKt;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 6
    .line 7
    return-void
.end method
