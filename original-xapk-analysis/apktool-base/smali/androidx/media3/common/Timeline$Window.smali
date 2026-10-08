.class public final Landroidx/media3/common/Timeline$Window;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field public static final n:Ljava/lang/Object;

.field public static final o:Landroidx/media3/common/MediaItem;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroidx/media3/common/MediaItem;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public i:Z

.field public j:J

.field public k:J

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "androidx.media3.common.Timeline"

    .line 14
    .line 15
    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 18
    .line 19
    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/media3/common/Timeline$Window;->o:Landroidx/media3/common/MediaItem;

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    const/4 v1, 0x5

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x3

    .line 32
    invoke-static {v2, v3, v4, v0, v1}, Lq;->q(IIIII)V

    .line 33
    .line 34
    .line 35
    const/16 v0, 0x9

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    const/4 v2, 0x6

    .line 40
    const/4 v3, 0x7

    .line 41
    const/16 v4, 0x8

    .line 42
    .line 43
    invoke-static {v2, v3, v4, v0, v1}, Lq;->q(IIIII)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0xb

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0xc

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0xd

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0xe

    .line 62
    .line 63
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v0, Landroidx/media3/common/Timeline$Window;->o:Landroidx/media3/common/MediaItem;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final b(Landroidx/media3/common/MediaItem;ZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJ)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Landroidx/media3/common/Timeline$Window;->o:Landroidx/media3/common/MediaItem;

    .line 10
    .line 11
    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 16
    .line 17
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/common/Timeline$Window;->c:J

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/media3/common/Timeline$Window;->d:J

    .line 25
    .line 26
    iput-wide v0, p0, Landroidx/media3/common/Timeline$Window;->e:J

    .line 27
    .line 28
    iput-boolean p2, p0, Landroidx/media3/common/Timeline$Window;->f:Z

    .line 29
    .line 30
    iput-boolean p3, p0, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 31
    .line 32
    iput-object p4, p0, Landroidx/media3/common/Timeline$Window;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 33
    .line 34
    iput-wide p5, p0, Landroidx/media3/common/Timeline$Window;->j:J

    .line 35
    .line 36
    iput-wide p7, p0, Landroidx/media3/common/Timeline$Window;->k:J

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput p1, p0, Landroidx/media3/common/Timeline$Window;->l:I

    .line 40
    .line 41
    iput p1, p0, Landroidx/media3/common/Timeline$Window;->m:I

    .line 42
    .line 43
    iput-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 44
    .line 45
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const-class v1, Landroidx/media3/common/Timeline$Window;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Landroidx/media3/common/Timeline$Window;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, p1, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 33
    .line 34
    iget-object v2, p1, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/common/Timeline$Window;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 43
    .line 44
    iget-object v2, p1, Landroidx/media3/common/Timeline$Window;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 45
    .line 46
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->c:J

    .line 53
    .line 54
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->c:J

    .line 55
    .line 56
    cmp-long v1, v1, v3

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->d:J

    .line 61
    .line 62
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->d:J

    .line 63
    .line 64
    cmp-long v1, v1, v3

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->e:J

    .line 69
    .line 70
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->e:J

    .line 71
    .line 72
    cmp-long v1, v1, v3

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    iget-boolean v1, p0, Landroidx/media3/common/Timeline$Window;->f:Z

    .line 77
    .line 78
    iget-boolean v2, p1, Landroidx/media3/common/Timeline$Window;->f:Z

    .line 79
    .line 80
    if-ne v1, v2, :cond_2

    .line 81
    .line 82
    iget-boolean v1, p0, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 83
    .line 84
    iget-boolean v2, p1, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 85
    .line 86
    if-ne v1, v2, :cond_2

    .line 87
    .line 88
    iget-boolean v1, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 89
    .line 90
    iget-boolean v2, p1, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 91
    .line 92
    if-ne v1, v2, :cond_2

    .line 93
    .line 94
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->j:J

    .line 95
    .line 96
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->j:J

    .line 97
    .line 98
    cmp-long v1, v1, v3

    .line 99
    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->k:J

    .line 103
    .line 104
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->k:J

    .line 105
    .line 106
    cmp-long v1, v1, v3

    .line 107
    .line 108
    if-nez v1, :cond_2

    .line 109
    .line 110
    iget v1, p0, Landroidx/media3/common/Timeline$Window;->l:I

    .line 111
    .line 112
    iget v2, p1, Landroidx/media3/common/Timeline$Window;->l:I

    .line 113
    .line 114
    if-ne v1, v2, :cond_2

    .line 115
    .line 116
    iget p0, p0, Landroidx/media3/common/Timeline$Window;->m:I

    .line 117
    .line 118
    iget p1, p1, Landroidx/media3/common/Timeline$Window;->m:I

    .line 119
    .line 120
    if-ne p0, p1, :cond_2

    .line 121
    .line 122
    return v0

    .line 123
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 124
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0xd9

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit16 v1, v1, 0x3c1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    add-int/2addr v1, v0

    .line 31
    mul-int/lit8 v1, v1, 0x1f

    .line 32
    .line 33
    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->c:J

    .line 34
    .line 35
    const/16 v0, 0x20

    .line 36
    .line 37
    ushr-long v4, v2, v0

    .line 38
    .line 39
    xor-long/2addr v2, v4

    .line 40
    long-to-int v2, v2

    .line 41
    add-int/2addr v1, v2

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->d:J

    .line 45
    .line 46
    ushr-long v4, v2, v0

    .line 47
    .line 48
    xor-long/2addr v2, v4

    .line 49
    long-to-int v2, v2

    .line 50
    add-int/2addr v1, v2

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->e:J

    .line 54
    .line 55
    ushr-long v4, v2, v0

    .line 56
    .line 57
    xor-long/2addr v2, v4

    .line 58
    long-to-int v2, v2

    .line 59
    add-int/2addr v1, v2

    .line 60
    mul-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->f:Z

    .line 63
    .line 64
    add-int/2addr v1, v2

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 66
    .line 67
    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 68
    .line 69
    add-int/2addr v1, v2

    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    .line 72
    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 73
    .line 74
    add-int/2addr v1, v2

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->j:J

    .line 78
    .line 79
    ushr-long v4, v2, v0

    .line 80
    .line 81
    xor-long/2addr v2, v4

    .line 82
    long-to-int v2, v2

    .line 83
    add-int/2addr v1, v2

    .line 84
    mul-int/lit8 v1, v1, 0x1f

    .line 85
    .line 86
    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->k:J

    .line 87
    .line 88
    ushr-long v4, v2, v0

    .line 89
    .line 90
    xor-long/2addr v2, v4

    .line 91
    long-to-int v0, v2

    .line 92
    add-int/2addr v1, v0

    .line 93
    mul-int/lit8 v1, v1, 0x1f

    .line 94
    .line 95
    iget v0, p0, Landroidx/media3/common/Timeline$Window;->l:I

    .line 96
    .line 97
    add-int/2addr v1, v0

    .line 98
    mul-int/lit8 v1, v1, 0x1f

    .line 99
    .line 100
    iget p0, p0, Landroidx/media3/common/Timeline$Window;->m:I

    .line 101
    .line 102
    add-int/2addr v1, p0

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    .line 104
    .line 105
    return v1
.end method
