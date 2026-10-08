.class public final synthetic Lne;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/material/ScaffoldState;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic n:Lkotlin/jvm/functions/Function3;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:I

.field public final synthetic q:Z

.field public final synthetic r:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic s:F

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:J

.field public final synthetic w:J

.field public final synthetic x:J

.field public final synthetic y:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lne;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lne;->k:Landroidx/compose/material/ScaffoldState;

    .line 7
    .line 8
    iput-object p3, p0, Lne;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lne;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lne;->n:Lkotlin/jvm/functions/Function3;

    .line 13
    .line 14
    iput-object p6, p0, Lne;->o:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput p7, p0, Lne;->p:I

    .line 17
    .line 18
    iput-boolean p8, p0, Lne;->q:Z

    .line 19
    .line 20
    iput-object p9, p0, Lne;->r:Landroidx/compose/ui/graphics/Shape;

    .line 21
    .line 22
    iput p10, p0, Lne;->s:F

    .line 23
    .line 24
    iput-wide p11, p0, Lne;->t:J

    .line 25
    .line 26
    iput-wide p13, p0, Lne;->u:J

    .line 27
    .line 28
    move-wide p1, p15

    .line 29
    iput-wide p1, p0, Lne;->v:J

    .line 30
    .line 31
    move-wide/from16 p1, p17

    .line 32
    .line 33
    iput-wide p1, p0, Lne;->w:J

    .line 34
    .line 35
    move-wide/from16 p1, p19

    .line 36
    .line 37
    iput-wide p1, p0, Lne;->x:J

    .line 38
    .line 39
    move-object/from16 p1, p21

    .line 40
    .line 41
    iput-object p1, p0, Lne;->y:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v21, p1

    .line 4
    .line 5
    check-cast v21, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0xd81

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v22

    .line 20
    iget-object v1, v0, Lne;->j:Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    iget-object v1, v0, Lne;->k:Landroidx/compose/material/ScaffoldState;

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    iget-object v2, v0, Lne;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    move-object v4, v3

    .line 29
    iget-object v3, v0, Lne;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 30
    .line 31
    move-object v5, v4

    .line 32
    iget-object v4, v0, Lne;->n:Lkotlin/jvm/functions/Function3;

    .line 33
    .line 34
    move-object v6, v5

    .line 35
    iget-object v5, v0, Lne;->o:Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    move-object v7, v6

    .line 38
    iget v6, v0, Lne;->p:I

    .line 39
    .line 40
    move-object v8, v7

    .line 41
    iget-boolean v7, v0, Lne;->q:Z

    .line 42
    .line 43
    move-object v9, v8

    .line 44
    iget-object v8, v0, Lne;->r:Landroidx/compose/ui/graphics/Shape;

    .line 45
    .line 46
    move-object v10, v9

    .line 47
    iget v9, v0, Lne;->s:F

    .line 48
    .line 49
    move-object v12, v10

    .line 50
    iget-wide v10, v0, Lne;->t:J

    .line 51
    .line 52
    move-object v14, v12

    .line 53
    iget-wide v12, v0, Lne;->u:J

    .line 54
    .line 55
    move-object/from16 v16, v14

    .line 56
    .line 57
    iget-wide v14, v0, Lne;->v:J

    .line 58
    .line 59
    move-object/from16 v17, v1

    .line 60
    .line 61
    move-object/from16 v18, v2

    .line 62
    .line 63
    iget-wide v1, v0, Lne;->w:J

    .line 64
    .line 65
    move-wide/from16 v19, v1

    .line 66
    .line 67
    iget-wide v1, v0, Lne;->x:J

    .line 68
    .line 69
    iget-object v0, v0, Lne;->y:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 70
    .line 71
    move-wide/from16 v23, v19

    .line 72
    .line 73
    move-object/from16 v20, v0

    .line 74
    .line 75
    move-object/from16 v0, v16

    .line 76
    .line 77
    move-wide/from16 v25, v1

    .line 78
    .line 79
    move-object/from16 v1, v17

    .line 80
    .line 81
    move-object/from16 v2, v18

    .line 82
    .line 83
    move-wide/from16 v16, v23

    .line 84
    .line 85
    move-wide/from16 v18, v25

    .line 86
    .line 87
    invoke-static/range {v0 .. v22}, Landroidx/compose/material/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object v0
.end method
