.class public Landroidx/media3/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroidx/media3/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->a:J

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long p2, p3, v0

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    sget-object p2, Landroidx/media3/extractor/SeekPoint;->c:Landroidx/media3/extractor/SeekPoint;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Landroidx/media3/extractor/SeekPoint;

    .line 18
    .line 19
    invoke-direct {p2, v0, v1, p3, p4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-direct {p1, p2, p2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->b:Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->b:Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
