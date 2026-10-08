.class public final synthetic Lpe;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/material/ScaffoldState;

.field public final synthetic m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic o:Lkotlin/jvm/functions/Function3;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:I

.field public final synthetic r:Z

.field public final synthetic s:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic t:F

.field public final synthetic u:J

.field public final synthetic v:J

.field public final synthetic w:J

.field public final synthetic x:J

.field public final synthetic y:J

.field public final synthetic z:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpe;->j:Landroidx/compose/foundation/layout/WindowInsets;

    .line 5
    .line 6
    iput-object p2, p0, Lpe;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lpe;->l:Landroidx/compose/material/ScaffoldState;

    .line 9
    .line 10
    iput-object p4, p0, Lpe;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lpe;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    iput-object p6, p0, Lpe;->o:Lkotlin/jvm/functions/Function3;

    .line 15
    .line 16
    iput-object p7, p0, Lpe;->p:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iput p8, p0, Lpe;->q:I

    .line 19
    .line 20
    iput-boolean p9, p0, Lpe;->r:Z

    .line 21
    .line 22
    iput-object p10, p0, Lpe;->s:Landroidx/compose/ui/graphics/Shape;

    .line 23
    .line 24
    iput p11, p0, Lpe;->t:F

    .line 25
    .line 26
    iput-wide p12, p0, Lpe;->u:J

    .line 27
    .line 28
    iput-wide p14, p0, Lpe;->v:J

    .line 29
    .line 30
    move-wide/from16 p1, p16

    .line 31
    .line 32
    iput-wide p1, p0, Lpe;->w:J

    .line 33
    .line 34
    move-wide/from16 p1, p18

    .line 35
    .line 36
    iput-wide p1, p0, Lpe;->x:J

    .line 37
    .line 38
    move-wide/from16 p1, p20

    .line 39
    .line 40
    iput-wide p1, p0, Lpe;->y:J

    .line 41
    .line 42
    move-object/from16 p1, p22

    .line 43
    .line 44
    iput-object p1, p0, Lpe;->z:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 45
    .line 46
    move/from16 p1, p23

    .line 47
    .line 48
    iput p1, p0, Lpe;->A:I

    .line 49
    .line 50
    move/from16 p1, p24

    .line 51
    .line 52
    iput p1, p0, Lpe;->B:I

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v22, p1

    .line 4
    .line 5
    check-cast v22, Landroidx/compose/runtime/Composer;

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
    iget v1, v0, Lpe;->A:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v23

    .line 22
    iget v1, v0, Lpe;->B:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v24

    .line 28
    iget-object v1, v0, Lpe;->j:Landroidx/compose/foundation/layout/WindowInsets;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Lpe;->k:Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    iget-object v2, v0, Lpe;->l:Landroidx/compose/material/ScaffoldState;

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    iget-object v3, v0, Lpe;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 38
    .line 39
    move-object v5, v4

    .line 40
    iget-object v4, v0, Lpe;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 41
    .line 42
    move-object v6, v5

    .line 43
    iget-object v5, v0, Lpe;->o:Lkotlin/jvm/functions/Function3;

    .line 44
    .line 45
    move-object v7, v6

    .line 46
    iget-object v6, v0, Lpe;->p:Lkotlin/jvm/functions/Function2;

    .line 47
    .line 48
    move-object v8, v7

    .line 49
    iget v7, v0, Lpe;->q:I

    .line 50
    .line 51
    move-object v9, v8

    .line 52
    iget-boolean v8, v0, Lpe;->r:Z

    .line 53
    .line 54
    move-object v10, v9

    .line 55
    iget-object v9, v0, Lpe;->s:Landroidx/compose/ui/graphics/Shape;

    .line 56
    .line 57
    move-object v11, v10

    .line 58
    iget v10, v0, Lpe;->t:F

    .line 59
    .line 60
    move-object v13, v11

    .line 61
    iget-wide v11, v0, Lpe;->u:J

    .line 62
    .line 63
    move-object v15, v13

    .line 64
    iget-wide v13, v0, Lpe;->v:J

    .line 65
    .line 66
    move-object/from16 v16, v1

    .line 67
    .line 68
    move-object/from16 v17, v2

    .line 69
    .line 70
    iget-wide v1, v0, Lpe;->w:J

    .line 71
    .line 72
    move-wide/from16 v18, v1

    .line 73
    .line 74
    iget-wide v1, v0, Lpe;->x:J

    .line 75
    .line 76
    move-wide/from16 v20, v1

    .line 77
    .line 78
    iget-wide v1, v0, Lpe;->y:J

    .line 79
    .line 80
    iget-object v0, v0, Lpe;->z:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 81
    .line 82
    move-wide/from16 v25, v20

    .line 83
    .line 84
    move-object/from16 v21, v0

    .line 85
    .line 86
    move-object v0, v15

    .line 87
    move-wide/from16 v27, v1

    .line 88
    .line 89
    move-object/from16 v1, v16

    .line 90
    .line 91
    move-object/from16 v2, v17

    .line 92
    .line 93
    move-wide/from16 v15, v18

    .line 94
    .line 95
    move-wide/from16 v17, v25

    .line 96
    .line 97
    move-wide/from16 v19, v27

    .line 98
    .line 99
    invoke-static/range {v0 .. v24}, Landroidx/compose/material/ScaffoldKt;->b(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object v0
.end method
