.class public final Lcoil3/request/ViewTargetRequestManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final j:Landroid/view/View;

.field public k:Lcoil3/request/ViewTargetDisposable;

.field public l:Lkotlinx/coroutines/Job;

.field public m:Lcoil3/request/ViewTargetRequestDelegate;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->j:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->m:Lcoil3/request/ViewTargetRequestDelegate;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcoil3/request/ViewTargetRequestManager;->n:Z

    .line 8
    .line 9
    iget-object p0, p1, Lcoil3/request/ViewTargetRequestDelegate;->j:Lcoil3/RealImageLoader;

    .line 10
    .line 11
    iget-object p1, p1, Lcoil3/request/ViewTargetRequestDelegate;->k:Lcoil3/request/ImageRequest;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/RealImageLoader;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/request/ViewTargetRequestManager;->m:Lcoil3/request/ViewTargetRequestDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestDelegate;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
