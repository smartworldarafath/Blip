.class final Lnet/blip/android/ui/controls/Colors;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/material/SwitchColors;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnet/blip/android/ui/controls/Colors;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lnet/blip/android/ui/controls/Colors;->b:J

    .line 7
    .line 8
    iput-wide p5, p0, Lnet/blip/android/ui/controls/Colors;->c:J

    .line 9
    .line 10
    iput-wide p7, p0, Lnet/blip/android/ui/controls/Colors;->d:J

    .line 11
    .line 12
    iput-wide p9, p0, Lnet/blip/android/ui/controls/Colors;->e:J

    .line 13
    .line 14
    iput-wide p11, p0, Lnet/blip/android/ui/controls/Colors;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(ZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 1

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x7d1e1076

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/compose/material/SwitchDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/SwitchColors;

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-wide p0, p0, Lnet/blip/android/ui/controls/Colors;->a:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide p0, p0, Lnet/blip/android/ui/controls/Colors;->c:J

    .line 18
    .line 19
    :goto_0
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public final b(ZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 1

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x281a4a61

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-wide p0, p0, Lnet/blip/android/ui/controls/Colors;->b:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide p0, p0, Lnet/blip/android/ui/controls/Colors;->d:J

    .line 15
    .line 16
    :goto_0
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/blip/android/ui/controls/Colors;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/blip/android/ui/controls/Colors;

    .line 12
    .line 13
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lnet/blip/android/ui/controls/Colors;->a:J

    .line 16
    .line 17
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->b:J

    .line 25
    .line 26
    iget-wide v5, p1, Lnet/blip/android/ui/controls/Colors;->b:J

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->c:J

    .line 36
    .line 37
    iget-wide v5, p1, Lnet/blip/android/ui/controls/Colors;->c:J

    .line 38
    .line 39
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->d:J

    .line 47
    .line 48
    iget-wide v5, p1, Lnet/blip/android/ui/controls/Colors;->d:J

    .line 49
    .line 50
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->e:J

    .line 58
    .line 59
    iget-wide v5, p1, Lnet/blip/android/ui/controls/Colors;->e:J

    .line 60
    .line 61
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->f:J

    .line 69
    .line 70
    iget-wide p0, p1, Lnet/blip/android/ui/controls/Colors;->f:J

    .line 71
    .line 72
    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->i:I

    .line 2
    .line 3
    iget-wide v0, p0, Lnet/blip/android/ui/controls/Colors;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Lnet/blip/android/ui/controls/Colors;->b:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Lnet/blip/android/ui/controls/Colors;->c:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Lnet/blip/android/ui/controls/Colors;->d:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-wide v2, p0, Lnet/blip/android/ui/controls/Colors;->e:J

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v1, p0, Lnet/blip/android/ui/controls/Colors;->f:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v0

    .line 43
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lnet/blip/android/ui/controls/Colors;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lnet/blip/android/ui/controls/Colors;->b:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lnet/blip/android/ui/controls/Colors;->c:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, Lnet/blip/android/ui/controls/Colors;->d:J

    .line 20
    .line 21
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Lnet/blip/android/ui/controls/Colors;->e:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-wide v5, p0, Lnet/blip/android/ui/controls/Colors;->f:J

    .line 32
    .line 33
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v5, ", switchTrackOn="

    .line 38
    .line 39
    const-string v6, ", switchKnobOff="

    .line 40
    .line 41
    const-string v7, "Colors(switchKnobOn="

    .line 42
    .line 43
    invoke-static {v7, v0, v5, v1, v6}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, ", switchTrackOff="

    .line 48
    .line 49
    const-string v5, ", switchKnobDisabled="

    .line 50
    .line 51
    invoke-static {v0, v2, v1, v3, v5}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", switchTrackDisabled="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, ")"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
