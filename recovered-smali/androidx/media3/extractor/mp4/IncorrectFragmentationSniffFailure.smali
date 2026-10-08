.class public final Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SniffFailure;


# static fields
.field public static final b:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

.field public static final c:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->b:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->c:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->a:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IncorrectFragmentation{expected="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->a:Z

    .line 9
    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, "}"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
