.class public final Lnet/blip/shared/AvatarTheme$Appearance;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/shared/AvatarTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Appearance"
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/graphics/Shape;

.field public final b:J

.field public final c:Landroidx/compose/ui/text/TextStyle;

.field public final d:Lnet/blip/shared/Paintable;

.field public final e:Lnet/blip/shared/Paintable;

.field public final f:Lnet/blip/shared/Paintable;

.field public final g:Lnet/blip/shared/Paintable;

.field public final h:Lnet/blip/shared/Paintable;

.field public final i:Lnet/blip/shared/Paintable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/text/TextStyle;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 8
    .line 9
    iput-wide p2, p0, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    iput-object p5, p0, Lnet/blip/shared/AvatarTheme$Appearance;->d:Lnet/blip/shared/Paintable;

    .line 14
    .line 15
    iput-object p6, p0, Lnet/blip/shared/AvatarTheme$Appearance;->e:Lnet/blip/shared/Paintable;

    .line 16
    .line 17
    iput-object p7, p0, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 18
    .line 19
    iput-object p8, p0, Lnet/blip/shared/AvatarTheme$Appearance;->g:Lnet/blip/shared/Paintable;

    .line 20
    .line 21
    iput-object p9, p0, Lnet/blip/shared/AvatarTheme$Appearance;->h:Lnet/blip/shared/Paintable;

    .line 22
    .line 23
    iput-object p10, p0, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 12
    .line 13
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 14
    .line 15
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-wide v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 25
    .line 26
    iget-wide v2, p1, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 36
    .line 37
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->d:Lnet/blip/shared/Paintable;

    .line 47
    .line 48
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->d:Lnet/blip/shared/Paintable;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lnet/blip/shared/Paintable;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->e:Lnet/blip/shared/Paintable;

    .line 58
    .line 59
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->e:Lnet/blip/shared/Paintable;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lnet/blip/shared/Paintable;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 69
    .line 70
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lnet/blip/shared/Paintable;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_7

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_7
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->g:Lnet/blip/shared/Paintable;

    .line 80
    .line 81
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->g:Lnet/blip/shared/Paintable;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lnet/blip/shared/Paintable;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->h:Lnet/blip/shared/Paintable;

    .line 91
    .line 92
    iget-object v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->h:Lnet/blip/shared/Paintable;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lnet/blip/shared/Paintable;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_9

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_9
    iget-object p0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 102
    .line 103
    iget-object p1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lnet/blip/shared/Paintable;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_a

    .line 110
    .line 111
    :goto_0
    const/4 p0, 0x0

    .line 112
    return p0

    .line 113
    :cond_a
    :goto_1
    const/4 p0, 0x1

    .line 114
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    sget v2, Landroidx/compose/ui/graphics/Color;->i:I

    .line 11
    .line 12
    iget-wide v2, p0, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v0

    .line 25
    mul-int/2addr v2, v1

    .line 26
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->d:Lnet/blip/shared/Paintable;

    .line 27
    .line 28
    iget-object v0, v0, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object v2, p0, Lnet/blip/shared/AvatarTheme$Appearance;->e:Lnet/blip/shared/Paintable;

    .line 37
    .line 38
    iget-object v2, v2, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/2addr v2, v0

    .line 45
    mul-int/2addr v2, v1

    .line 46
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 47
    .line 48
    iget-object v0, v0, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v0, v2

    .line 55
    mul-int/2addr v0, v1

    .line 56
    iget-object v2, p0, Lnet/blip/shared/AvatarTheme$Appearance;->g:Lnet/blip/shared/Paintable;

    .line 57
    .line 58
    iget-object v2, v2, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v0

    .line 65
    mul-int/2addr v2, v1

    .line 66
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->h:Lnet/blip/shared/Paintable;

    .line 67
    .line 68
    iget-object v0, v0, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v0, v2

    .line 75
    mul-int/2addr v0, v1

    .line 76
    iget-object p0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 77
    .line 78
    iget-object p0, p0, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    add-int/2addr p0, v0

    .line 85
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Appearance(shape="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", background="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", initialsStyle="

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", iconDevicePhone="

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->d:Lnet/blip/shared/Paintable;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", iconDeviceTablet="

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->e:Lnet/blip/shared/Paintable;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", iconDeviceLaptop="

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", iconDeviceDesktop="

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->g:Lnet/blip/shared/Paintable;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, ", iconDeviceUnknown="

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->h:Lnet/blip/shared/Paintable;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ", iconPersonNoInitials="

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p0, ")"

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
