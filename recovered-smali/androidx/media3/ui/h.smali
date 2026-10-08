.class public final synthetic Landroidx/media3/ui/h;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/h;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget p0, p0, Landroidx/media3/ui/h;->j:I

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 4
    .line 5
    check-cast p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->a:I

    .line 11
    .line 12
    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->a:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    :goto_0
    return p0

    .line 41
    :pswitch_0
    iget p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->b:I

    .line 42
    .line 43
    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->b:I

    .line 44
    .line 45
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object p0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object p0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p1, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    :goto_1
    return p0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
