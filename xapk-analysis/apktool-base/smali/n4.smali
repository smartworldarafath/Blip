.class public final synthetic Ln4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic k:J

.field public final synthetic l:J

.field public final synthetic m:Landroidx/compose/ui/graphics/drawscope/DrawStyle;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/SolidColor;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln4;->j:Landroidx/compose/ui/graphics/Brush;

    .line 5
    .line 6
    iput-wide p2, p0, Ln4;->k:J

    .line 7
    .line 8
    iput-wide p4, p0, Ln4;->l:J

    .line 9
    .line 10
    iput-object p6, p0, Ln4;->m:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 7
    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/16 v8, 0x68

    .line 11
    .line 12
    iget-object v1, p0, Ln4;->j:Landroidx/compose/ui/graphics/Brush;

    .line 13
    .line 14
    iget-wide v2, p0, Ln4;->k:J

    .line 15
    .line 16
    iget-wide v4, p0, Ln4;->l:J

    .line 17
    .line 18
    iget-object v7, p0, Ln4;->m:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 19
    .line 20
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->O(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method
