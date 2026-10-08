.class final Lcoil3/size/ViewSizeResolver$size$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lcoil3/size/ViewSizeResolver;

.field public final synthetic k:Landroid/view/ViewTreeObserver;

.field public final synthetic l:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;


# direct methods
.method public constructor <init>(Lcoil3/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->j:Lcoil3/size/ViewSizeResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->k:Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->l:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->k:Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->l:Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->j:Lcoil3/size/ViewSizeResolver;

    .line 18
    .line 19
    check-cast p0, Lcoil3/size/RealViewSizeResolver;

    .line 20
    .line 21
    iget-object p0, p0, Lcoil3/size/RealViewSizeResolver;->b:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method
