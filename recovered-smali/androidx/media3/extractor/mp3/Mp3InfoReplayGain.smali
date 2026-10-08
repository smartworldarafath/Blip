.class public final Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

.field public final c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;


# direct methods
.method public constructor <init>(FLandroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    .line 10
    .line 11
    iget v2, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 20
    .line 21
    iget-object v2, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v1

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_1
    add-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ReplayGain Xing/Info: peak="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", field 1="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", field 2="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
