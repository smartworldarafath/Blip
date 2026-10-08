.class public final synthetic Landroidx/compose/foundation/text/l;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/l;->j:Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/l;->k:Landroidx/compose/ui/layout/Placeable;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/text/l;->l:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/foundation/text/l;->j:Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    .line 5
    .line 6
    iget v1, p1, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->c:I

    .line 7
    .line 8
    iget-object v6, p1, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->b:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 9
    .line 10
    iget-object v2, p1, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->d:Landroidx/compose/ui/text/input/TransformedText;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->e:Lkotlin/jvm/functions/Function0;

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
    const/4 v4, 0x0

    .line 29
    iget-object p1, p0, Landroidx/compose/foundation/text/l;->k:Landroidx/compose/ui/layout/Placeable;

    .line 30
    .line 31
    iget v5, p1, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldScrollKt;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 38
    .line 39
    iget v3, p1, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 40
    .line 41
    iget p0, p0, Landroidx/compose/foundation/text/l;->l:I

    .line 42
    .line 43
    invoke-virtual {v6, v2, v1, p0, v3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    neg-float p0, p0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {v0, p1, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method
