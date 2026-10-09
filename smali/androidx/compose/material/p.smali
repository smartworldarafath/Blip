.class public final synthetic Landroidx/compose/material/p;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/material/TextFieldTransitionScope;

.field public final synthetic k:Landroidx/compose/material/InputPhase;

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:Lkotlin/jvm/functions/Function3;

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material/TextFieldTransitionScope;Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/p;->j:Landroidx/compose/material/TextFieldTransitionScope;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/p;->k:Landroidx/compose/material/InputPhase;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material/p;->l:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/compose/material/p;->m:J

    .line 11
    .line 12
    iput-object p7, p0, Landroidx/compose/material/p;->n:Lkotlin/jvm/functions/Function3;

    .line 13
    .line 14
    iput-boolean p8, p0, Landroidx/compose/material/p;->o:Z

    .line 15
    .line 16
    iput-object p9, p0, Landroidx/compose/material/p;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x1b0001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result v10

    .line 16
    iget-object v0, p0, Landroidx/compose/material/p;->j:Landroidx/compose/material/TextFieldTransitionScope;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/material/p;->k:Landroidx/compose/material/InputPhase;

    .line 19
    .line 20
    iget-wide v2, p0, Landroidx/compose/material/p;->l:J

    .line 21
    .line 22
    iget-wide v4, p0, Landroidx/compose/material/p;->m:J

    .line 23
    .line 24
    iget-object v6, p0, Landroidx/compose/material/p;->n:Lkotlin/jvm/functions/Function3;

    .line 25
    .line 26
    iget-boolean v7, p0, Landroidx/compose/material/p;->o:Z

    .line 27
    .line 28
    iget-object v8, p0, Landroidx/compose/material/p;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material/TextFieldTransitionScope;->a(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
