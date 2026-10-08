.class public final synthetic Luc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Luc;->j:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/high16 v3, 0x40000000    # 2.0f

    .line 20
    .line 21
    iget p0, p0, Luc;->j:F

    .line 22
    .line 23
    mul-float/2addr p0, v3

    .line 24
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int v3, p0, v2

    .line 29
    .line 30
    iget-wide v4, p3, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 31
    .line 32
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    add-int v5, p3, p0

    .line 42
    .line 43
    const/4 v6, 0x5

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 55
    .line 56
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 57
    .line 58
    new-instance v0, Lf;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-direct {v0, p0, v1}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p1, p2, p3, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
