.class public final Landroidx/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A:F

.field public B:I

.field public C:Z

.field public D:F

.field public E:[B

.field public F:I

.field public G:Landroidx/media3/common/ColorInfo;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/common/collect/ImmutableList;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Landroidx/media3/common/Metadata;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Ljava/util/List;

.field public s:Landroidx/media3/common/DrmInitData;

.field public t:J

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/common/Format$Builder;->g:F

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Landroidx/media3/common/Format$Builder;->i:I

    .line 16
    .line 17
    iput v1, p0, Landroidx/media3/common/Format$Builder;->j:I

    .line 18
    .line 19
    iput v1, p0, Landroidx/media3/common/Format$Builder;->p:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/media3/common/Format$Builder;->q:I

    .line 22
    .line 23
    const-wide v2, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iput-wide v2, p0, Landroidx/media3/common/Format$Builder;->t:J

    .line 29
    .line 30
    iput v1, p0, Landroidx/media3/common/Format$Builder;->v:I

    .line 31
    .line 32
    iput v1, p0, Landroidx/media3/common/Format$Builder;->w:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/media3/common/Format$Builder;->x:I

    .line 35
    .line 36
    iput v1, p0, Landroidx/media3/common/Format$Builder;->y:I

    .line 37
    .line 38
    iput v1, p0, Landroidx/media3/common/Format$Builder;->z:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/media3/common/Format$Builder;->A:F

    .line 41
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    .line 44
    iput v0, p0, Landroidx/media3/common/Format$Builder;->D:F

    .line 45
    .line 46
    iput v1, p0, Landroidx/media3/common/Format$Builder;->F:I

    .line 47
    .line 48
    iput v1, p0, Landroidx/media3/common/Format$Builder;->H:I

    .line 49
    .line 50
    iput v1, p0, Landroidx/media3/common/Format$Builder;->I:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/media3/common/Format$Builder;->J:I

    .line 53
    .line 54
    iput v1, p0, Landroidx/media3/common/Format$Builder;->K:I

    .line 55
    .line 56
    iput v1, p0, Landroidx/media3/common/Format$Builder;->L:I

    .line 57
    .line 58
    iput v1, p0, Landroidx/media3/common/Format$Builder;->O:I

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput v0, p0, Landroidx/media3/common/Format$Builder;->P:I

    .line 62
    .line 63
    iput v1, p0, Landroidx/media3/common/Format$Builder;->Q:I

    .line 64
    .line 65
    iput v1, p0, Landroidx/media3/common/Format$Builder;->R:I

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput v0, p0, Landroidx/media3/common/Format$Builder;->S:I

    .line 69
    .line 70
    iput v0, p0, Landroidx/media3/common/Format$Builder;->h:I

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/Format;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/Format;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
