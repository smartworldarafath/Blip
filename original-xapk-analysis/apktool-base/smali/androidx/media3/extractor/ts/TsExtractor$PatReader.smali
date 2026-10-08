.class Landroidx/media3/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final synthetic b:Landroidx/media3/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->b:Landroidx/media3/extractor/ts/TsExtractor;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->b:Landroidx/media3/extractor/ts/TsExtractor;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    and-int/lit16 v2, v2, 0x80

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v2, 0x6

    .line 22
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x4

    .line 30
    div-int/2addr v2, v3

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_1
    if-ge v5, v2, :cond_4

    .line 34
    .line 35
    iget-object v6, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 36
    .line 37
    iget-object v7, v6, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 38
    .line 39
    invoke-virtual {p1, v7, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 43
    .line 44
    .line 45
    const/16 v7, 0x10

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x3

    .line 52
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 53
    .line 54
    .line 55
    const/16 v8, 0xd

    .line 56
    .line 57
    if-nez v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-nez v7, :cond_3

    .line 72
    .line 73
    new-instance v7, Landroidx/media3/extractor/ts/SectionReader;

    .line 74
    .line 75
    new-instance v8, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;

    .line 76
    .line 77
    invoke-direct {v8, v0, v6}, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v7, v8}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->m:I

    .line 87
    .line 88
    add-int/lit8 v6, v6, 0x1

    .line 89
    .line 90
    iput v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->m:I

    .line 91
    .line 92
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final c(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 1
    return-void
.end method
