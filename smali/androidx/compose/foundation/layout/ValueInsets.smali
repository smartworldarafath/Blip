.class public final Landroidx/compose/foundation/layout/ValueInsets;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/layout/WindowInsets;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/layout/ValueInsets;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/compose/foundation/layout/ValueInsets;->b:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/unit/Density;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroidx/compose/foundation/layout/InsetsValues;->b:I

    .line 6
    .line 7
    return p0
.end method

.method public final b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroidx/compose/foundation/layout/InsetsValues;->c:I

    .line 6
    .line 7
    return p0
.end method

.method public final c(Landroidx/compose/ui/unit/Density;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroidx/compose/foundation/layout/InsetsValues;->d:I

    .line 6
    .line 7
    return p0
.end method

.method public final d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroidx/compose/foundation/layout/InsetsValues;->a:I

    .line 6
    .line 7
    return p0
.end method

.method public final e()Landroidx/compose/foundation/layout/InsetsValues;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ValueInsets;->b:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/layout/InsetsValues;

    .line 10
    .line 11
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/ValueInsets;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p1, Landroidx/compose/foundation/layout/ValueInsets;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final f(Landroidx/compose/foundation/layout/InsetsValues;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ValueInsets;->b:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ValueInsets;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroidx/compose/foundation/layout/InsetsValues;->a:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroidx/compose/foundation/layout/InsetsValues;->b:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Landroidx/compose/foundation/layout/InsetsValues;->c:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ValueInsets;->e()Landroidx/compose/foundation/layout/InsetsValues;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v3, v3, Landroidx/compose/foundation/layout/InsetsValues;->d:I

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/compose/foundation/layout/ValueInsets;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "(left="

    .line 36
    .line 37
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ", top="

    .line 44
    .line 45
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, ", right="

    .line 52
    .line 53
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, ", bottom="

    .line 60
    .line 61
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p0, ")"

    .line 68
    .line 69
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
