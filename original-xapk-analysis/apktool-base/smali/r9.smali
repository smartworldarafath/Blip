.class public final synthetic Lr9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:[Landroidx/compose/ui/layout/HorizontalRuler;


# direct methods
.method public synthetic constructor <init>([Landroidx/compose/ui/layout/HorizontalRuler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr9;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lr9;->k:[Landroidx/compose/ui/layout/HorizontalRuler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lr9;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lr9;->k:[Landroidx/compose/ui/layout/HorizontalRuler;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p1, v0, p0, p2}, Landroidx/compose/ui/layout/RulerKt;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z[Landroidx/compose/ui/layout/Ruler;F)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p0, p2}, Landroidx/compose/ui/layout/RulerKt;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z[Landroidx/compose/ui/layout/Ruler;F)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
