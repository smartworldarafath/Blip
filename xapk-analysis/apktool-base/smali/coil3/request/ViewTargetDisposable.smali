.class public final Lcoil3/request/ViewTargetDisposable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/request/Disposable;


# instance fields
.field public final a:Landroid/view/View;

.field public volatile b:Lkotlinx/coroutines/Deferred;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/request/ViewTargetDisposable;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/request/ViewTargetDisposable;->b:Lkotlinx/coroutines/Deferred;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/Deferred;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/request/ViewTargetDisposable;->b:Lkotlinx/coroutines/Deferred;

    .line 2
    .line 3
    return-object p0
.end method
