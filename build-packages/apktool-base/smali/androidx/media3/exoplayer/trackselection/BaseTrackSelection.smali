.class public abstract Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# static fields
.field public static final f:Lv1;


# instance fields
.field public final a:Landroidx/media3/common/TrackGroup;

.field public final b:I

.field public final c:[I

.field public final d:[Landroidx/media3/common/Format;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lv1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->f:Lv1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p2

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 20
    .line 21
    array-length p1, p2

    .line 22
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    .line 23
    .line 24
    new-array p1, p1, [Landroidx/media3/common/Format;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 27
    .line 28
    move p1, v1

    .line 29
    :goto_1
    array-length v2, p2

    .line 30
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 31
    .line 32
    if-ge p1, v2, :cond_1

    .line 33
    .line 34
    aget v2, p2, p1

    .line 35
    .line 36
    aget-object v2, v0, v2

    .line 37
    .line 38
    aput-object v2, v3, p1

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->f:Lv1;

    .line 44
    .line 45
    invoke-static {v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    .line 49
    .line 50
    new-array p1, p1, [I

    .line 51
    .line 52
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 53
    .line 54
    move p1, v1

    .line 55
    :goto_2
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    .line 56
    .line 57
    if-ge p1, p2, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 62
    .line 63
    aget-object v2, v2, p1

    .line 64
    .line 65
    move v3, v1

    .line 66
    :goto_3
    array-length v4, v0

    .line 67
    if-ge v3, v4, :cond_3

    .line 68
    .line 69
    aget-object v4, v0, v3

    .line 70
    .line 71
    if-ne v2, v4, :cond_2

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const/4 v3, -0x1

    .line 78
    :goto_4
    aput v3, p2, p1

    .line 79
    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-array p0, p2, [J

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 22
    .line 23
    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    return v0

    .line 42
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    iput v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->e:I

    .line 21
    .line 22
    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->e:I

    .line 23
    .line 24
    return p0
.end method
