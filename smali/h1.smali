.class public final synthetic Lh1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:J

.field public final synthetic n:Landroidx/compose/foundation/ScrollState;

.field public final synthetic o:Landroidx/compose/ui/window/PopupProperties;

.field public final synthetic p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lh1;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Lh1;->k:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lh1;->l:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-wide p4, p0, Lh1;->m:J

    .line 11
    .line 12
    iput-object p6, p0, Lh1;->n:Landroidx/compose/foundation/ScrollState;

    .line 13
    .line 14
    iput-object p7, p0, Lh1;->o:Landroidx/compose/ui/window/PopupProperties;

    .line 15
    .line 16
    iput-object p8, p0, Lh1;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    iput p9, p0, Lh1;->q:I

    .line 19
    .line 20
    iput p10, p0, Lh1;->r:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lh1;->q:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-boolean v0, p0, Lh1;->j:Z

    .line 18
    .line 19
    iget-object v1, p0, Lh1;->k:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    iget-object v2, p0, Lh1;->l:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-wide v3, p0, Lh1;->m:J

    .line 24
    .line 25
    iget-object v5, p0, Lh1;->n:Landroidx/compose/foundation/ScrollState;

    .line 26
    .line 27
    iget-object v6, p0, Lh1;->o:Landroidx/compose/ui/window/PopupProperties;

    .line 28
    .line 29
    iget-object v7, p0, Lh1;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 30
    .line 31
    iget v10, p0, Lh1;->r:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
