.class public final Landroidx/media3/exoplayer/ScrubbingModeParameters;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    }
.end annotation


# static fields
.field public static final g:Landroidx/media3/exoplayer/ScrubbingModeParameters;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableSet;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x5

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x2

    .line 17
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v4, v2}, Lcom/google/common/collect/ImmutableSet;->l(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->a:Lcom/google/common/collect/ImmutableSet;

    .line 26
    .line 27
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->b:Z

    .line 28
    .line 29
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->c:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->d:Z

    .line 32
    .line 33
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->e:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->f:Z

    .line 36
    .line 37
    new-instance v1, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/ScrubbingModeParameters;-><init>(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->g:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->a:Lcom/google/common/collect/ImmutableSet;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 7
    .line 8
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    .line 15
    .line 16
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    .line 19
    .line 20
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->e:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    .line 23
    .line 24
    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->f:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    .line 25
    .line 26
    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    .line 31
    .line 32
    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    .line 43
    .line 44
    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    .line 45
    .line 46
    if-ne p0, p1, :cond_1

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    iget-object v1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method
