.class public final synthetic Lg0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lg0;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lg0;->l:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-object p4, p0, Lg0;->m:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Lg0;->n:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Lg0;->o:Landroidx/compose/ui/graphics/Shape;

    .line 15
    .line 16
    iput-wide p7, p0, Lg0;->p:J

    .line 17
    .line 18
    iput-wide p9, p0, Lg0;->q:J

    .line 19
    .line 20
    iput-object p11, p0, Lg0;->r:Landroidx/compose/ui/window/DialogProperties;

    .line 21
    .line 22
    iput p12, p0, Lg0;->s:I

    .line 23
    .line 24
    iput p13, p0, Lg0;->t:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lg0;->s:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    iget-object v0, p0, Lg0;->j:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    iget-object v1, p0, Lg0;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 22
    .line 23
    iget-object v2, p0, Lg0;->l:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    iget-object v3, p0, Lg0;->m:Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    iget-object v4, p0, Lg0;->n:Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    iget-object v5, p0, Lg0;->o:Landroidx/compose/ui/graphics/Shape;

    .line 30
    .line 31
    iget-wide v6, p0, Lg0;->p:J

    .line 32
    .line 33
    iget-wide v8, p0, Lg0;->q:J

    .line 34
    .line 35
    iget-object v10, p0, Lg0;->r:Landroidx/compose/ui/window/DialogProperties;

    .line 36
    .line 37
    iget v13, p0, Lg0;->t:I

    .line 38
    .line 39
    invoke-static/range {v0 .. v13}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method
