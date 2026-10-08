.class public final synthetic Lh0;
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

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic q:J

.field public final synthetic r:J

.field public final synthetic s:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lh0;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lh0;->l:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-object p4, p0, Lh0;->m:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Lh0;->n:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Lh0;->o:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Lh0;->p:Landroidx/compose/ui/graphics/Shape;

    .line 17
    .line 18
    iput-wide p8, p0, Lh0;->q:J

    .line 19
    .line 20
    iput-wide p10, p0, Lh0;->r:J

    .line 21
    .line 22
    iput-object p12, p0, Lh0;->s:Landroidx/compose/ui/window/DialogProperties;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v12, p1

    .line 2
    check-cast v12, Landroidx/compose/runtime/Composer;

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
    const v0, 0x36c31

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v13

    .line 18
    iget-object v0, p0, Lh0;->j:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iget-object v1, p0, Lh0;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iget-object v2, p0, Lh0;->l:Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    iget-object v3, p0, Lh0;->m:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    iget-object v4, p0, Lh0;->n:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iget-object v5, p0, Lh0;->o:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    iget-object v6, p0, Lh0;->p:Landroidx/compose/ui/graphics/Shape;

    .line 31
    .line 32
    iget-wide v7, p0, Lh0;->q:J

    .line 33
    .line 34
    iget-wide v9, p0, Lh0;->r:J

    .line 35
    .line 36
    iget-object v11, p0, Lh0;->s:Landroidx/compose/ui/window/DialogProperties;

    .line 37
    .line 38
    invoke-static/range {v0 .. v13}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method
