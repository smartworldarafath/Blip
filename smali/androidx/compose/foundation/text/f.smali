.class public final synthetic Landroidx/compose/foundation/text/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

.field public final synthetic k:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/f;->j:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/f;->k:Landroidx/compose/ui/layout/MeasureScope;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/f;->l:Landroidx/compose/ui/layout/Placeable;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/foundation/text/f;->m:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/foundation/text/f;->j:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 5
    .line 6
    iget v1, p1, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->c:I

    .line 7
    .line 8
    iget-object v6, p1, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->b:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 9
    .line 10
    iget-object v2, p1, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->d:Landroidx/compose/ui/text/input/TransformedText;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 23
    .line 24
    :goto_0
    move-object v3, p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    iget-object p1, p0, Landroidx/compose/foundation/text/f;->k:Landroidx/compose/ui/layout/MeasureScope;

    .line 29
    .line 30
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-ne p1, v4, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    move v4, p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move v4, v7

    .line 43
    :goto_2
    iget-object p1, p0, Landroidx/compose/foundation/text/f;->l:Landroidx/compose/ui/layout/Placeable;

    .line 44
    .line 45
    iget v5, p1, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 46
    .line 47
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldScrollKt;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 52
    .line 53
    iget v3, p1, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 54
    .line 55
    iget p0, p0, Landroidx/compose/foundation/text/f;->m:I

    .line 56
    .line 57
    invoke-virtual {v6, v2, v1, p0, v3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    neg-float p0, p0

    .line 65
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {v0, p1, p0, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method
