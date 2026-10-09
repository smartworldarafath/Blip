.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Landroidx/compose/ui/Alignment;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->l:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->m:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->n:Landroidx/compose/ui/Alignment;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->o:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->p:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    iput p8, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->r:I

    .line 16
    .line 17
    iput p9, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->s:I

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->r:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget v9, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->s:I

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->k:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->l:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->m:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->n:Landroidx/compose/ui/Alignment;

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->o:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->p:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    iget-object v6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
