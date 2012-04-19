.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mBuffersSize:J

.field private mCachedSize:J

.field private mFreeSize:J

.field private mShmemSize:J

.field private mSlabSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 47
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 48
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 49
    move v0, p2

    .line 50
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 52
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 53
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 56
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 60
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 58
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 35
    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    .line 38
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 39
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBufferSize()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J

    return-wide v0
.end method

.method public getCachedSize()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getShmemSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J

    return-wide v0
.end method

.method public getSlabSize()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 8

    .prologue
    .line 67
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 69
    .local v5, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v6, 0x0

    :try_start_0
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const-wide/16 v6, 0x0

    :try_start_1
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    const-wide/16 v6, 0x0

    :try_start_2
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_34
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    const-wide/16 v6, 0x0

    :try_start_3
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_34
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 73
    const-wide/16 v6, 0x0

    :try_start_4
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_34
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 74
    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_34
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 75
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_34
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    const-string v6, "/proc/meminfo"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_34
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_34
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 76
    .local v3, is:Ljava/io/FileInputStream;
    :try_start_9
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_34
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    move-result v4

    .line 77
    .local v4, len:I
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_34
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 78
    :try_start_c
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_34
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :try_start_d
    array-length v0, v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_34
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 79
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .line 80
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_7

    const/4 v6, 0x6

    if-ge v1, v6, :cond_7

    .line 81
    :try_start_e
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_34
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    :try_start_f
    const-string v7, "MemTotal"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_34
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    :try_start_10
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    add-int/lit8 v2, v2, 0x8

    .line 83
    :try_start_11
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_34
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    :try_start_12
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_34
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-wide v6

    :try_start_13
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_34
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 106
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_6

    :try_start_14
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_34
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_32

    :try_start_15
    aget-byte v6, v6, v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_34
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_33

    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_1
    :try_start_16
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_34
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_14

    :try_start_17
    const-string v7, "MemFree"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_34
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_15

    :try_start_18
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_34
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    add-int/lit8 v2, v2, 0x7

    .line 87
    :try_start_19
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_34
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17

    :try_start_1a
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_34
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18

    move-result-wide v6

    :try_start_1b
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_34
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_2
    :try_start_1c
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1a

    :try_start_1d
    const-string v7, "Cached"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_34
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1b

    :try_start_1e
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_34
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1c

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    add-int/lit8 v2, v2, 0x6

    .line 91
    :try_start_1f
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_34
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1d

    :try_start_20
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_34
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1e

    move-result-wide v6

    :try_start_21
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_34
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1f

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_3
    :try_start_22
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_34
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_20

    :try_start_23
    const-string v7, "Buffers"
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_34
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_21

    :try_start_24
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_22

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    add-int/lit8 v2, v2, 0x7

    .line 95
    :try_start_25
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_34
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_23

    :try_start_26
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_34
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_24

    move-result-wide v6

    :try_start_27
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_34
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_25

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_4
    :try_start_28
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_26

    :try_start_29
    const-string v7, "Shmem"
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_34
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_27

    :try_start_2a
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_28

    move-result v6

    if-eqz v6, :cond_5

    .line 98
    add-int/lit8 v2, v2, 0x5

    .line 99
    :try_start_2b
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_34
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_29

    :try_start_2c
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_34
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2a

    move-result-wide v6

    :try_start_2d
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_2b

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_5
    :try_start_2e
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_2c

    :try_start_2f
    const-string v7, "Slab"
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_2d

    :try_start_30
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_2e

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    add-int/lit8 v2, v2, 0x4

    .line 103
    :try_start_31
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_2f

    :try_start_32
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_34
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_30

    move-result-wide v6

    :try_start_33
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_31

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 113
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catchall_0
    move-exception v6

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 111
    :catch_0
    move-exception v6

    .line 113
    :cond_7
    :goto_2
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 115
    return-void

    .line 111
    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_2

    :catch_4
    move-exception v6

    goto :goto_2

    :catch_5
    move-exception v6

    goto :goto_2

    :catch_6
    move-exception v6

    goto :goto_2

    :catch_7
    move-exception v6

    goto :goto_2

    :catch_8
    move-exception v6

    goto :goto_2

    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    goto :goto_2

    :catch_a
    move-exception v6

    goto :goto_2

    .restart local v4       #len:I
    :catch_b
    move-exception v6

    goto :goto_2

    :catch_c
    move-exception v6

    goto :goto_2

    :catch_d
    move-exception v6

    goto :goto_2

    .restart local v0       #BUFLEN:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catch_e
    move-exception v6

    goto :goto_2

    :catch_f
    move-exception v6

    goto :goto_2

    :catch_10
    move-exception v6

    goto :goto_2

    :catch_11
    move-exception v6

    goto :goto_2

    :catch_12
    move-exception v6

    goto :goto_2

    :catch_13
    move-exception v6

    goto :goto_2

    :catch_14
    move-exception v6

    goto :goto_2

    :catch_15
    move-exception v6

    goto :goto_2

    :catch_16
    move-exception v6

    goto :goto_2

    :catch_17
    move-exception v6

    goto :goto_2

    :catch_18
    move-exception v6

    goto :goto_2

    :catch_19
    move-exception v6

    goto :goto_2

    :catch_1a
    move-exception v6

    goto :goto_2

    :catch_1b
    move-exception v6

    goto :goto_2

    :catch_1c
    move-exception v6

    goto :goto_2

    :catch_1d
    move-exception v6

    goto :goto_2

    :catch_1e
    move-exception v6

    goto :goto_2

    :catch_1f
    move-exception v6

    goto :goto_2

    :catch_20
    move-exception v6

    goto :goto_2

    :catch_21
    move-exception v6

    goto :goto_2

    :catch_22
    move-exception v6

    goto :goto_2

    :catch_23
    move-exception v6

    goto :goto_2

    :catch_24
    move-exception v6

    goto :goto_2

    :catch_25
    move-exception v6

    goto :goto_2

    :catch_26
    move-exception v6

    goto :goto_2

    :catch_27
    move-exception v6

    goto :goto_2

    :catch_28
    move-exception v6

    goto :goto_2

    :catch_29
    move-exception v6

    goto :goto_2

    :catch_2a
    move-exception v6

    goto :goto_2

    :catch_2b
    move-exception v6

    goto :goto_2

    :catch_2c
    move-exception v6

    goto :goto_2

    :catch_2d
    move-exception v6

    goto :goto_2

    :catch_2e
    move-exception v6

    goto :goto_2

    :catch_2f
    move-exception v6

    goto :goto_2

    :catch_30
    move-exception v6

    goto :goto_2

    :catch_31
    move-exception v6

    goto :goto_2

    :catch_32
    move-exception v6

    goto :goto_2

    :catch_33
    move-exception v6

    goto :goto_2

    .line 110
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_34
    move-exception v6

    goto :goto_2
.end method
