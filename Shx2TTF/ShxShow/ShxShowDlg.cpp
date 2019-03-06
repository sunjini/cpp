
// ShxShowDlg.cpp: 实现文件
//

#include "stdafx.h"
#include "ShxShow.h"
#include "ShxShowDlg.h"
#include "afxdialogex.h"

#include "../source/ShapeFont.h"
#include "../source/fontchrlink.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// 用于应用程序“关于”菜单项的 CAboutDlg 对话框

class CAboutDlg : public CDialogEx
{
public:
	CAboutDlg();

// 对话框数据
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_ABOUTBOX };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

// 实现
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialogEx(IDD_ABOUTBOX)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialogEx)
END_MESSAGE_MAP()


// CShxShowDlg 对话框



CShxShowDlg::CShxShowDlg(CWnd* pParent /*=NULL*/)
	: CDialog(IDD_SHXSHOW_DIALOG, pParent)
	, m_chShx(_T(""))
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CShxShowDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT1, m_chShx);
	DDV_MaxChars(pDX, m_chShx, 1);
}

BEGIN_MESSAGE_MAP(CShxShowDlg, CDialog)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(ID_SHOW, &CShxShowDlg::OnBnClickedShow)
	ON_BN_CLICKED(IDC_CREATE_LFF, &CShxShowDlg::OnBnClickedCreateLff)
END_MESSAGE_MAP()


// CShxShowDlg 消息处理程序

BOOL CShxShowDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// 将“关于...”菜单项添加到系统菜单中。

	// IDM_ABOUTBOX 必须在系统命令范围内。
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		BOOL bNameValid;
		CString strAboutMenu;
		bNameValid = strAboutMenu.LoadString(IDS_ABOUTBOX);
		ASSERT(bNameValid);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// 设置此对话框的图标。  当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码

	return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}

void CShxShowDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。  对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CShxShowDlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 用于绘制的设备上下文

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 使图标在工作区矩形中居中
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 绘制图标
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

//当用户拖动最小化窗口时系统调用此函数取得光标
//显示。
HCURSOR CShxShowDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


/* 测试通过的单笔画字体：HZ-SM1(7150)  Single-line FangSongbig(4016)  寒鹰中文(4019)   HZta(4005) hztx(7279) 
	HZ-SM1 默认的字符尺寸为 80x80 , 坐标原点在左下角，x 轴向右为正， y 轴向下为正，
	字符在 x轴正向和 y轴负向
*/ 
void CShxShowDlg::OnBnClickedShow()
{
	// TODO: 在此添加控件通知处理程序代码
	CWnd* pWnd = GetDlgItem(IDC_STATIC);//获得静态文本框的窗口对象
	CRect rect;
	pWnd->GetClientRect(&rect);
	//
	CDC* pDC = pWnd->GetDC();//

	pDC->Ellipse(-50, -50, 50, 50);
	//　A　line　that　starts　at　(0,　0)　and　ends　at　(100,　100)
	/*pDC->MoveTo(0, 0);
	pDC->LineTo(100, 100);*/

	ShapeFont* m_font = new ShapeFont();
	if (m_font->Load("HZ-SM1.SHX")) {
		printf("已打开");
		printf("%i", m_font->Count());//字库包含多少字符
		int nCount = m_font->Count();

		CString str("睿");
		//获得 '好' 字编码
		char* kk = str.GetBuffer(0);
		wchar_t buf1[100];
		unsigned char key[8];
		//开始获得路径 例 '好' 字
				
		// 汉字 unicode 、gbk 等编码查询网址 https://www.qqxiuzi.cn/bianma/zifuji.php
		// 将 str（utf-8 编码）转成 unicode ，存放在 buf1 中
		MultiByteToWideChar(CP_OEMCP, 0, str.GetBuffer(0), 6, buf1, 100);
		
		// 将 unicode 转成 gbk 编码，保存在 key 中
		WideCharToMultiByte(CP_ACP, 0, buf1, 3, (char *)key, 6, NULL, NULL);


		unsigned short k1;
		k1 = key[0] << 8 | key[1];
		m_font->Display(pDC, k1, 0, 3 * 80, 4.5, 3);

		//m_font->Display(pDC, k1, -160, -60, 2, 2);

		string patch = m_font->Patch(k1, 0, 0, 1, 1);

		patch = m_font->Shx2lff(k1, 0, 0, 0.12, 0.16, false);

		MessageBox(patch.c_str());

		/*k1 = key[0] << 8 | key[1];
		m_font->Display(pDC, k1, -160, -60);

		k1 = buf1[0];
		k1 = (k1 & 0x000000ff) << 8  | (k1 & 0x0000ff00 ) >> 8;
		m_font->Display(pDC, k1, -160, -160);*/

		/*int nValid = 0;
		for (int i = 0; i < nCount; i++) {
			if (m_font->Get(i)) {
				nValid++;
				k1 = m_font->Get(i)->code;
				patch = m_font->Shx2lff(k1, 0, 0, 1, 1);
				if (patch.find("anglearc") != string::npos) {
					MessageBox((str.GetBuffer() + string(" => ") + patch).c_str());
				}
			}
		}
		MessageBox("运行结束");*/
	}
	else {
		MessageBox("字库打开错误");
	}
}


void CShxShowDlg::OnBnClickedCreateLff()
{
	// TODO: 在此添加控件通知处理程序代码
	unsigned short k1;
	string patch;
	int nCount;

	ShapeFont* m_font = new ShapeFont();
	if (m_font->Load("HZ-SM1.SHX")) {
		printf("已打开");
		printf("%i", m_font->Count());//字库包含多少字符

		CFile file;
		file.Open("hz-sm1.lff", CFile::modeCreate | CFile::modeWrite);

		nCount = m_font->Count();
		for (int i = 0; i < nCount; i++) {
			if (m_font->Get(i)) {
				
				k1 = m_font->Get(i)->code;
				patch = m_font->Shx2lff(k1, 0, 0, 0.12, 0.16, false);
				if (patch.find("anglearc") == string::npos) {
					file.Write(patch.c_str(), patch.length());
					// file.Write("\r\n", 2);
				}
			}
		}

		file.Close();
		MessageBox("运行结束");
	}
	else {
		MessageBox("字库打开错误");
	}
}
