.class Landroidx/exifinterface/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifTag"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->c:I

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 16
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 17
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->c:I

    .line 18
    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->d:I

    return-void
.end method
