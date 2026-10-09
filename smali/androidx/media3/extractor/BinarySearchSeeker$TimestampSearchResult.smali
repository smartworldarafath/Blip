.class public final Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation


# static fields
.field public static final d:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    const/4 v1, -0x3

    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->d:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->c:J

    .line 9
    .line 10
    return-void
.end method
