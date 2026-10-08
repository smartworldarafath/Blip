.class final Landroidx/compose/foundation/layout/FillElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/FillNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/foundation/layout/Direction;

.field public final c:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/FillElement;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FillElement;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    iget p0, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    .line 19
    .line 20
    iget p1, p1, Landroidx/compose/foundation/layout/FillElement;->c:F

    .line 21
    .line 22
    cmpg-float p0, p0, p1

    .line 23
    .line 24
    if-nez p0, :cond_3

    .line 25
    .line 26
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FillNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/compose/foundation/layout/FillNode;->x:Landroidx/compose/foundation/layout/Direction;

    .line 9
    .line 10
    iget p0, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    .line 11
    .line 12
    iput p0, v0, Landroidx/compose/foundation/layout/FillNode;->y:F

    .line 13
    .line 14
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/FillNode;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    iput-object v0, p1, Landroidx/compose/foundation/layout/FillNode;->x:Landroidx/compose/foundation/layout/Direction;

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    .line 8
    .line 9
    iput p0, p1, Landroidx/compose/foundation/layout/FillNode;->y:F

    .line 10
    .line 11
    return-void
.end method
