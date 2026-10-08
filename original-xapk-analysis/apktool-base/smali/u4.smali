.class public final synthetic Lu4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/material/ButtonElevation;

.field public final synthetic n:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic o:Landroidx/compose/material/ButtonColors;

.field public final synthetic p:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic q:Lkotlin/jvm/functions/Function3;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu4;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lu4;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-boolean p3, p0, Lu4;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lu4;->m:Landroidx/compose/material/ButtonElevation;

    .line 11
    .line 12
    iput-object p5, p0, Lu4;->n:Landroidx/compose/ui/graphics/Shape;

    .line 13
    .line 14
    iput-object p6, p0, Lu4;->o:Landroidx/compose/material/ButtonColors;

    .line 15
    .line 16
    iput-object p7, p0, Lu4;->p:Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    iput-object p8, p0, Lu4;->q:Lkotlin/jvm/functions/Function3;

    .line 19
    .line 20
    iput p9, p0, Lu4;->r:I

    .line 21
    .line 22
    iput p10, p0, Lu4;->s:I

    .line 23
    .line 24
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
    iget p1, p0, Lu4;->r:I

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
    iget-object v0, p0, Lu4;->j:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iget-object v1, p0, Lu4;->k:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-boolean v2, p0, Lu4;->l:Z

    .line 22
    .line 23
    iget-object v3, p0, Lu4;->m:Landroidx/compose/material/ButtonElevation;

    .line 24
    .line 25
    iget-object v4, p0, Lu4;->n:Landroidx/compose/ui/graphics/Shape;

    .line 26
    .line 27
    iget-object v5, p0, Lu4;->o:Landroidx/compose/material/ButtonColors;

    .line 28
    .line 29
    iget-object v6, p0, Lu4;->p:Landroidx/compose/foundation/layout/PaddingValues;

    .line 30
    .line 31
    iget-object v7, p0, Lu4;->q:Lkotlin/jvm/functions/Function3;

    .line 32
    .line 33
    iget v10, p0, Lu4;->s:I

    .line 34
    .line 35
    invoke-static/range {v0 .. v10}, Landroidx/compose/material/ButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method
