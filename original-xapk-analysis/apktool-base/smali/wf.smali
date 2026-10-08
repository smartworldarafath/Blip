.class public final synthetic Lwf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:F

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwf;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lwf;->k:Landroidx/compose/ui/graphics/Shape;

    .line 7
    .line 8
    iput-wide p3, p0, Lwf;->l:J

    .line 9
    .line 10
    iput-wide p5, p0, Lwf;->m:J

    .line 11
    .line 12
    iput-wide p7, p0, Lwf;->n:J

    .line 13
    .line 14
    iput p9, p0, Lwf;->o:F

    .line 15
    .line 16
    iput p10, p0, Lwf;->p:I

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
    iget p1, p0, Lwf;->p:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    iget-object v0, p0, Lwf;->j:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-object v1, p0, Lwf;->k:Landroidx/compose/ui/graphics/Shape;

    .line 20
    .line 21
    iget-wide v2, p0, Lwf;->l:J

    .line 22
    .line 23
    iget-wide v4, p0, Lwf;->m:J

    .line 24
    .line 25
    iget-wide v6, p0, Lwf;->n:J

    .line 26
    .line 27
    iget v8, p0, Lwf;->o:F

    .line 28
    .line 29
    invoke-static/range {v0 .. v10}, Landroidx/compose/material/SnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJFLandroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
