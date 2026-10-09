.class Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstStrong"
.end annotation


# static fields
.field public static final a:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->a:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    move v1, p0

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-ge v1, p2, :cond_2

    .line 6
    .line 7
    if-ne v2, v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->a:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    if-eq v2, v0, :cond_0

    .line 25
    .line 26
    packed-switch v2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    move v2, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :pswitch_0
    move v2, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :pswitch_1
    move v2, v3

    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v2

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
