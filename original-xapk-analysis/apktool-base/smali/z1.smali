.class public final synthetic Lz1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/selection/OffsetProvider;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field public final synthetic m:Z

.field public final synthetic n:J

.field public final synthetic o:F

.field public final synthetic p:Landroidx/compose/ui/Modifier;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz1;->j:Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 5
    .line 6
    iput-boolean p2, p0, Lz1;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Lz1;->l:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 9
    .line 10
    iput-boolean p4, p0, Lz1;->m:Z

    .line 11
    .line 12
    iput-wide p5, p0, Lz1;->n:J

    .line 13
    .line 14
    iput p7, p0, Lz1;->o:F

    .line 15
    .line 16
    iput-object p8, p0, Lz1;->p:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    iput p9, p0, Lz1;->q:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    iget p1, p0, Lz1;->q:I

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
    iget-object v0, p0, Lz1;->j:Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 18
    .line 19
    iget-boolean v1, p0, Lz1;->k:Z

    .line 20
    .line 21
    iget-object v2, p0, Lz1;->l:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 22
    .line 23
    iget-boolean v3, p0, Lz1;->m:Z

    .line 24
    .line 25
    iget-wide v4, p0, Lz1;->n:J

    .line 26
    .line 27
    iget v6, p0, Lz1;->o:F

    .line 28
    .line 29
    iget-object v7, p0, Lz1;->p:Landroidx/compose/ui/Modifier;

    .line 30
    .line 31
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->b(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
