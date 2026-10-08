.class public final synthetic Lhd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:J

.field public final synthetic k:Landroidx/compose/runtime/State;

.field public final synthetic l:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lhd;->j:J

    .line 5
    .line 6
    iput-object p3, p0, Lhd;->k:Landroidx/compose/runtime/State;

    .line 7
    .line 8
    iput-object p4, p0, Lhd;->l:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lhd;->k:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const/16 p1, 0x20

    .line 24
    .line 25
    shr-long/2addr v1, p1

    .line 26
    long-to-int p1, v1

    .line 27
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v1, p0, Lhd;->l:Landroidx/compose/runtime/State;

    .line 32
    .line 33
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    mul-float/2addr v1, p1

    .line 44
    const/high16 p1, 0x3f000000    # 0.5f

    .line 45
    .line 46
    mul-float v3, v1, p1

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    const/16 v7, 0x74

    .line 51
    .line 52
    iget-wide v1, p0, Lhd;->j:J

    .line 53
    .line 54
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->J(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFI)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method
