.class final synthetic Landroidx/compose/ui/platform/AndroidComposeView$dragAndDropManager$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;",
        "Landroidx/compose/ui/geometry/Size;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/geometry/Size;

    .line 5
    .line 6
    iget-wide p1, p2, Landroidx/compose/ui/geometry/Size;->a:J

    .line 7
    .line 8
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 35
    .line 36
    invoke-static {v2, v1}, Landroidx/compose/ui/unit/DensityKt;->a(FF)Landroidx/compose/ui/unit/Density;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Landroidx/compose/ui/draganddrop/ComposeDragShadowBuilder;

    .line 41
    .line 42
    invoke-direct {v2, v1, p1, p2, p3}, Landroidx/compose/ui/draganddrop/ComposeDragShadowBuilder;-><init>(Landroidx/compose/ui/unit/Density;JLkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Landroidx/compose/ui/platform/AndroidComposeViewStartDragAndDropN;->a:Landroidx/compose/ui/platform/AndroidComposeViewStartDragAndDropN;

    .line 46
    .line 47
    invoke-virtual {p1, p0, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewStartDragAndDropN;->a(Landroid/view/View;Landroidx/compose/ui/draganddrop/DragAndDropTransferData;Landroidx/compose/ui/draganddrop/ComposeDragShadowBuilder;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method
