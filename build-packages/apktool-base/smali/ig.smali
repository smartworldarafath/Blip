.class public final synthetic Lig;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:F

.field public final synthetic q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic r:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lig;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lig;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-boolean p3, p0, Lig;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lig;->m:Landroidx/compose/ui/graphics/Shape;

    .line 11
    .line 12
    iput-wide p5, p0, Lig;->n:J

    .line 13
    .line 14
    iput-wide p7, p0, Lig;->o:J

    .line 15
    .line 16
    iput p9, p0, Lig;->p:F

    .line 17
    .line 18
    iput-object p10, p0, Lig;->q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 19
    .line 20
    iput-object p11, p0, Lig;->r:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iput p12, p0, Lig;->s:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lig;->s:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v12

    .line 17
    iget-object v0, p0, Lig;->j:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iget-object v1, p0, Lig;->k:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-boolean v2, p0, Lig;->l:Z

    .line 22
    .line 23
    iget-object v3, p0, Lig;->m:Landroidx/compose/ui/graphics/Shape;

    .line 24
    .line 25
    iget-wide v4, p0, Lig;->n:J

    .line 26
    .line 27
    iget-wide v6, p0, Lig;->o:J

    .line 28
    .line 29
    iget v8, p0, Lig;->p:F

    .line 30
    .line 31
    iget-object v9, p0, Lig;->q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 32
    .line 33
    iget-object v10, p0, Lig;->r:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    invoke-static/range {v0 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method
