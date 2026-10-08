.class public final synthetic Lvf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:F

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Landroidx/compose/material/SliderColors;

.field public final synthetic n:F

.field public final synthetic o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic p:Landroidx/compose/ui/Modifier;


# direct methods
.method public synthetic constructor <init>(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lvf;->j:Z

    .line 5
    .line 6
    iput p2, p0, Lvf;->k:F

    .line 7
    .line 8
    iput-object p3, p0, Lvf;->l:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lvf;->m:Landroidx/compose/material/SliderColors;

    .line 11
    .line 12
    iput p5, p0, Lvf;->n:F

    .line 13
    .line 14
    iput-object p6, p0, Lvf;->o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 15
    .line 16
    iput-object p7, p0, Lvf;->p:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    iget-boolean v0, p0, Lvf;->j:Z

    .line 15
    .line 16
    iget v1, p0, Lvf;->k:F

    .line 17
    .line 18
    iget-object v2, p0, Lvf;->l:Ljava/util/List;

    .line 19
    .line 20
    iget-object v3, p0, Lvf;->m:Landroidx/compose/material/SliderColors;

    .line 21
    .line 22
    iget v4, p0, Lvf;->n:F

    .line 23
    .line 24
    iget-object v5, p0, Lvf;->o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 25
    .line 26
    iget-object v6, p0, Lvf;->p:Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->c(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
