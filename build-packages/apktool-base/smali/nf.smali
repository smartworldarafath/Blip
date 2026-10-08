.class public final synthetic Lnf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:Landroidx/compose/material/SliderColors;

.field public final synthetic m:Z

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnf;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Lnf;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 7
    .line 8
    iput-object p3, p0, Lnf;->l:Landroidx/compose/material/SliderColors;

    .line 9
    .line 10
    iput-boolean p4, p0, Lnf;->m:Z

    .line 11
    .line 12
    iput p5, p0, Lnf;->n:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lnf;->n:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget v0, p0, Lnf;->j:F

    .line 18
    .line 19
    iget-object v1, p0, Lnf;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 20
    .line 21
    iget-object v2, p0, Lnf;->l:Landroidx/compose/material/SliderColors;

    .line 22
    .line 23
    iget-boolean v3, p0, Lnf;->m:Z

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/SliderKt;->d(FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZLandroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
