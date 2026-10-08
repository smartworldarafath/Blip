.class public final Lkotlinx/io/Segment;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Lkotlinx/io/Segment;

.field public f:Lkotlinx/io/Segment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lkotlinx/io/Segment;->a:[B

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lkotlinx/io/Segment;->d:Z

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lkotlinx/io/Segment;->a:[B

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lkotlinx/io/Segment;->b:I

    .line 17
    iput p1, p0, Lkotlinx/io/Segment;->c:I

    .line 18
    iput-boolean p1, p0, Lkotlinx/io/Segment;->d:Z

    return-void
.end method
