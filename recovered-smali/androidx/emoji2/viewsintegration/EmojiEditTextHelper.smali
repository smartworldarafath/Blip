.class public final Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;,
        Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;
    }
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;-><init>(Landroid/widget/EditText;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of p0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_1
    instance-of p0, p1, Landroid/text/method/NumberKeyListener;

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_2
    new-instance p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->a:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->a:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->b:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->l:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->k:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->k:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "initCallback cannot be null"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Landroidx/emoji2/text/EmojiCompat;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat;->b:Landroidx/collection/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->l:Z

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->j:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompat;->d()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->a(Landroid/widget/EditText;I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method
