.class public final Landroidx/media3/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Track$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Landroidx/media3/common/Format;

.field public final h:I

.field public final i:Lcom/google/common/primitives/ImmutableLongArray;

.field public final j:Lcom/google/common/primitives/ImmutableLongArray;

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Track$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->a:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 7
    .line 8
    iget v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->b:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/extractor/mp4/Track;->b:I

    .line 11
    .line 12
    iget-wide v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->c:J

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 15
    .line 16
    iget-wide v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->d:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 19
    .line 20
    iget-wide v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->e:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/Track;->e:J

    .line 23
    .line 24
    iget-wide v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->f:J

    .line 25
    .line 26
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/Track;->f:J

    .line 27
    .line 28
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 34
    .line 35
    iget v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->h:I

    .line 36
    .line 37
    iput v0, p0, Landroidx/media3/extractor/mp4/Track;->h:I

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->i:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Track;->n:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 42
    .line 43
    iget v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->j:I

    .line 44
    .line 45
    iput v0, p0, Landroidx/media3/extractor/mp4/Track;->k:I

    .line 46
    .line 47
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->k:Lcom/google/common/primitives/ImmutableLongArray;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Track;->i:Lcom/google/common/primitives/ImmutableLongArray;

    .line 50
    .line 51
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->l:Lcom/google/common/primitives/ImmutableLongArray;

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Track;->j:Lcom/google/common/primitives/ImmutableLongArray;

    .line 54
    .line 55
    iget-boolean v0, p1, Landroidx/media3/extractor/mp4/Track$Builder;->m:Z

    .line 56
    .line 57
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Track;->m:Z

    .line 58
    .line 59
    iget p1, p1, Landroidx/media3/extractor/mp4/Track$Builder;->n:I

    .line 60
    .line 61
    iput p1, p0, Landroidx/media3/extractor/mp4/Track;->l:I

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/extractor/mp4/Track$Builder;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/extractor/mp4/Track$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 7
    .line 8
    iput v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->a:I

    .line 9
    .line 10
    iget v1, p0, Landroidx/media3/extractor/mp4/Track;->b:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->b:I

    .line 13
    .line 14
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 15
    .line 16
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->c:J

    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 19
    .line 20
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->d:J

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Track;->e:J

    .line 23
    .line 24
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->e:J

    .line 25
    .line 26
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/Track;->f:J

    .line 27
    .line 28
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->f:J

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 31
    .line 32
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 33
    .line 34
    iget v1, p0, Landroidx/media3/extractor/mp4/Track;->h:I

    .line 35
    .line 36
    iput v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->h:I

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Track;->n:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 39
    .line 40
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->i:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 41
    .line 42
    iget v1, p0, Landroidx/media3/extractor/mp4/Track;->k:I

    .line 43
    .line 44
    iput v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->j:I

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Track;->i:Lcom/google/common/primitives/ImmutableLongArray;

    .line 47
    .line 48
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->k:Lcom/google/common/primitives/ImmutableLongArray;

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Track;->j:Lcom/google/common/primitives/ImmutableLongArray;

    .line 51
    .line 52
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->l:Lcom/google/common/primitives/ImmutableLongArray;

    .line 53
    .line 54
    iget-boolean v1, p0, Landroidx/media3/extractor/mp4/Track;->m:Z

    .line 55
    .line 56
    iput-boolean v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->m:Z

    .line 57
    .line 58
    iget p0, p0, Landroidx/media3/extractor/mp4/Track;->l:I

    .line 59
    .line 60
    iput p0, v0, Landroidx/media3/extractor/mp4/Track$Builder;->n:I

    .line 61
    .line 62
    return-object v0
.end method
